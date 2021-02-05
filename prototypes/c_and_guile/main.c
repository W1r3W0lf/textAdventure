#include <stdio.h>
#include <libguile.h>

SCM load_game_save(SCM arg){
	char* file_name = scm_to_locale_string(arg);
	printf("C: saving to %s\n", file_name);
	return arg;
}

SCM save_game(SCM arg){
	char* file_name = scm_to_locale_string(arg);
	printf("C: loading from %s\n", file_name);
	return arg;
}

int main(int argc, char* argv[]){
	SCM func;

	scm_init_guile();

	scm_c_define_gsubr("load_game_save", 1, 0, 0, load_game_save);
	scm_c_define_gsubr("save_game", 1, 0, 0, save_game);

	scm_c_primitive_load("script.scm");

	func = scm_variable_ref(scm_c_lookup("game-test"));

	scm_call_0(func);

	return 0;
}
