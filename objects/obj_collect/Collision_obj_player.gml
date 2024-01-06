if ++global.collect >= 20
{
	global.collect = 0;
	other.hp++;
}
global.totalcollect += 5
instance_destroy();
