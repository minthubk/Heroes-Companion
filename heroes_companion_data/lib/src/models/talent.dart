import 'package:heroes_companion_data/src/tables/talent_table.dart' as table;

class Talent {
  final int id;
  final int hero_id;
  final String ability_id;
  final String talent_tree_id;
  final String tool_tip_id;
  final int level;
  final int sort_order;
  final String name;
  final String description;
  final String icon_file_name;

  Talent(this.id, this.hero_id, this.ability_id, this.talent_tree_id, this.tool_tip_id, this.level, this.sort_order, this.name, this.description, this.icon_file_name);

  factory Talent.fromMap (Map map){
    int id = map[table.column_id];
    int hero_id = map[table.column_hero_id];
    String ability_id = map[table.column_ability_id];
    String talent_tree_id = map[table.column_talent_tree_id];
    String tool_tip_id = map[table.column_tool_tip_id];
    int level = map[table.column_level];
    int sort_order = map[table.column_sort_order];
    String name = map[table.column_name];
    String description = map[table.column_description];
    String icon_file_name = map[table.column_icon_file_name];
    return new Talent(id, hero_id, ability_id, talent_tree_id, tool_tip_id, level, sort_order, name, description, icon_file_name);
  }

  Map toMap() {
    Map map = {
      table.column_id: id,
      table.column_hero_id: hero_id,
      table.column_ability_id: ability_id,
      table.column_talent_tree_id: talent_tree_id,
      table.column_tool_tip_id: tool_tip_id,
      table.column_level: level,
      table.column_sort_order: sort_order,
      table.column_name: name,
      table.column_description: description,
      table.column_icon_file_name: icon_file_name,
    };
    return map;
  }

  Talent copyWith ({int id, int hero_id, String ability_id, String talent_tree_id, String tool_tip_id, int level, int sort_order, String name, String description, String icon_file_name}){
    return new Talent(
      id = id ?? this.id,
      hero_id = hero_id ?? this.hero_id,
      ability_id = ability_id ?? this.ability_id,
      talent_tree_id = talent_tree_id ?? this.talent_tree_id,
      tool_tip_id = tool_tip_id ?? this.tool_tip_id,
      level = level ?? this.level,
      sort_order = sort_order ?? this.sort_order,
      name = name ?? this.name,
      description = description ?? this.description,
      icon_file_name = icon_file_name ?? this.icon_file_name,
    );
  }

  @override
  String toString(){
    return 'Talent ${name}';
  }
}
