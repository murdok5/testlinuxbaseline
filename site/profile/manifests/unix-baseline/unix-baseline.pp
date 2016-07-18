# sample unix baseline
class profile::unix-baseline::unix-baseline {

  # manage swap file - 2x mem size
  # using module: petems-swap_file, v3.0.1

  $mem = ${::memory['system']['available_bytes']
  $mem2x = 2 * ${::memory['system']['available_b ytes']

  notify { "mem = ${mem}, twice = ${mem2}": }

  #swap_file::files { 'default':
  #  ensure   => present,
  #}


}
