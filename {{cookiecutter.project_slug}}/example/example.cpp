#include <iostream>
#include "{{cookiecutter.project_slug}}/{{cookiecutter.project_slug}}.h"
#include "version.h"

int main() {
    std::cout << buildinfo::version << std::endl;
    std::cout << {{cookiecutter.namespace}}::hello_world() << std::endl;
    return 0;
}