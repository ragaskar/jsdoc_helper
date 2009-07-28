# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jsdoc_helper}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pete Gadomski"]
  s.date = %q{2009-07-28}
  s.default_executable = %q{jsdoc_helper}
  s.description = %q{JsdocHelper provides rake tasks for jsdoc-toolkit, a Javascript documentation generator.

JsdocHelper includes:
* A copy of jsdoc-toolkit. JsDoc Toolkit is an application, written in JavaScript, for automatically generating template-formatted, multi-page HTML (or XML, JSON, or any other text-based) documentation from commented JavaScript source code. (from http://code.google.com/p/jsdoc-toolkit/)
* A class that defines rake tasks to generate your jsdoc}
  s.email = %q{pete.gadomski@gmail.com}
  s.executables = ["jsdoc_helper"]
  s.extra_rdoc_files = ["History.txt", "README.rdoc", "bin/jsdoc_helper"]
  s.files = ["History.txt", "README.rdoc", "Rakefile", "bin/jsdoc_helper", "ext/.DS_Store", "ext/jsdoc-toolkit/.DS_Store", "ext/jsdoc-toolkit/README.txt", "ext/jsdoc-toolkit/app/frame.js", "ext/jsdoc-toolkit/app/frame/Chain.js", "ext/jsdoc-toolkit/app/frame/Dumper.js", "ext/jsdoc-toolkit/app/frame/Hash.js", "ext/jsdoc-toolkit/app/frame/Link.js", "ext/jsdoc-toolkit/app/frame/Namespace.js", "ext/jsdoc-toolkit/app/frame/Opt.js", "ext/jsdoc-toolkit/app/frame/Reflection.js", "ext/jsdoc-toolkit/app/frame/String.js", "ext/jsdoc-toolkit/app/frame/Testrun.js", "ext/jsdoc-toolkit/app/handlers/FOODOC.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC/DomReader.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC/XMLDoc.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC/XMLParse.js", "ext/jsdoc-toolkit/app/lib/JSDOC.js", "ext/jsdoc-toolkit/app/lib/JSDOC/DocComment.js", "ext/jsdoc-toolkit/app/lib/JSDOC/DocTag.js", "ext/jsdoc-toolkit/app/lib/JSDOC/JsDoc.js", "ext/jsdoc-toolkit/app/lib/JSDOC/JsPlate.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Lang.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Parser.js", "ext/jsdoc-toolkit/app/lib/JSDOC/PluginManager.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Symbol.js", "ext/jsdoc-toolkit/app/lib/JSDOC/SymbolSet.js", "ext/jsdoc-toolkit/app/lib/JSDOC/TextStream.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Token.js", "ext/jsdoc-toolkit/app/lib/JSDOC/TokenReader.js", "ext/jsdoc-toolkit/app/lib/JSDOC/TokenStream.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Util.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Walker.js", "ext/jsdoc-toolkit/app/main.js", "ext/jsdoc-toolkit/app/plugins/commentSrcJson.js", "ext/jsdoc-toolkit/app/plugins/frameworkPrototype.js", "ext/jsdoc-toolkit/app/plugins/functionCall.js", "ext/jsdoc-toolkit/app/plugins/publishSrcHilite.js", "ext/jsdoc-toolkit/app/plugins/symbolLink.js", "ext/jsdoc-toolkit/app/plugins/tagParamConfig.js", "ext/jsdoc-toolkit/app/plugins/tagSynonyms.js", "ext/jsdoc-toolkit/app/run.js", "ext/jsdoc-toolkit/app/t/TestDoc.js", "ext/jsdoc-toolkit/app/t/runner.js", "ext/jsdoc-toolkit/app/test.js", "ext/jsdoc-toolkit/app/test/addon.js", "ext/jsdoc-toolkit/app/test/anon_inner.js", "ext/jsdoc-toolkit/app/test/augments.js", "ext/jsdoc-toolkit/app/test/augments2.js", "ext/jsdoc-toolkit/app/test/borrows.js", "ext/jsdoc-toolkit/app/test/borrows2.js", "ext/jsdoc-toolkit/app/test/config.js", "ext/jsdoc-toolkit/app/test/constructs.js", "ext/jsdoc-toolkit/app/test/encoding.js", "ext/jsdoc-toolkit/app/test/encoding_other.js", "ext/jsdoc-toolkit/app/test/event.js", "ext/jsdoc-toolkit/app/test/functions_anon.js", "ext/jsdoc-toolkit/app/test/functions_nested.js", "ext/jsdoc-toolkit/app/test/global.js", "ext/jsdoc-toolkit/app/test/globals.js", "ext/jsdoc-toolkit/app/test/ignore.js", "ext/jsdoc-toolkit/app/test/inner.js", "ext/jsdoc-toolkit/app/test/jsdoc_test.js", "ext/jsdoc-toolkit/app/test/lend.js", "ext/jsdoc-toolkit/app/test/memberof.js", "ext/jsdoc-toolkit/app/test/memberof_constructor.js", "ext/jsdoc-toolkit/app/test/name.js", "ext/jsdoc-toolkit/app/test/namespace_nested.js", "ext/jsdoc-toolkit/app/test/nocode.js", "ext/jsdoc-toolkit/app/test/oblit_anon.js", "ext/jsdoc-toolkit/app/test/overview.js", "ext/jsdoc-toolkit/app/test/param_inline.js", "ext/jsdoc-toolkit/app/test/params_optional.js", "ext/jsdoc-toolkit/app/test/prototype.js", "ext/jsdoc-toolkit/app/test/prototype_nested.js", "ext/jsdoc-toolkit/app/test/prototype_oblit.js", "ext/jsdoc-toolkit/app/test/prototype_oblit_constructor.js", "ext/jsdoc-toolkit/app/test/public.js", "ext/jsdoc-toolkit/app/test/shared.js", "ext/jsdoc-toolkit/app/test/shared2.js", "ext/jsdoc-toolkit/app/test/shortcuts.js", "ext/jsdoc-toolkit/app/test/static_this.js", "ext/jsdoc-toolkit/app/test/synonyms.js", "ext/jsdoc-toolkit/app/test/tosource.js", "ext/jsdoc-toolkit/app/test/variable_redefine.js", "ext/jsdoc-toolkit/changes.txt", "ext/jsdoc-toolkit/conf/sample.conf", "ext/jsdoc-toolkit/java/.DS_Store", "ext/jsdoc-toolkit/java/build.xml", "ext/jsdoc-toolkit/java/build_1.4.xml", "ext/jsdoc-toolkit/java/classes/js.jar", "ext/jsdoc-toolkit/java/src/JsDebugRun.java", "ext/jsdoc-toolkit/java/src/JsRun.java", "ext/jsdoc-toolkit/jsdebug.jar", "ext/jsdoc-toolkit/jsrun.jar", "ext/jsdoc-toolkit/templates/jsdoc/allclasses.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/allfiles.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/class.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/index.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/publish.js", "ext/jsdoc-toolkit/templates/jsdoc/static/default.css", "ext/jsdoc-toolkit/templates/jsdoc/static/header.html", "ext/jsdoc-toolkit/templates/jsdoc/static/index.html", "ext/jsdoc-toolkit/templates/jsdoc/symbol.tmpl", "features/generate_rake_tasks.feature", "features/make_doc_with_rake.feature", "features/step_definitions/jsdoc_helper_steps.rb", "features/support/env.rb", "features/support/file_helpers.rb", "jsdoc_helper.gemspec", "lib/jsdoc_helper.rb", "lib/jsdoc_helper/rake/task.rb", "spec/jsdoc_helper_spec.rb", "spec/spec_helper.rb", "test/tmp/Rakefile", "test/tmp/doc/files.html", "test/tmp/doc/index.html", "test/tmp/doc/symbols/_global_.html", "test/tmp/doc/symbols/src/_Users_petegadomski_Developer_jsdoc_helper_test_tmp_lib_test.js.html", "test/tmp/lib/test.js"]
  s.homepage = %q{http://github.com/quentonc/jsdoc_helper/tree/master}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{jsdoc_helper}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{JsdocHelper provides rake tasks for jsdoc-toolkit, a Javascript documentation generator}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.5.1"])
    else
      s.add_dependency(%q<bones>, [">= 2.5.1"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.5.1"])
  end
end
