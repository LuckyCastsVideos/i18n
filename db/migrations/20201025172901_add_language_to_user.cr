class AddLanguageToUser::V20201025172901 < Avram::Migrator::Migration::V1
  def migrate
    alter table_for(User) do
      add language : String, default: "en"
    end
  end

  def rollback
    alter table_for(User) do
      remove :language
    end
  end
end
