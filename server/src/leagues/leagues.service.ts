import { Injectable } from '@nestjs/common';
import { CreateLeagueDto } from './dto/create-league.dto';
import { UpdateLeagueDto } from './dto/update-league.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class LeaguesService {

  constructor(private prisma: PrismaService) {}
  
  create(createLeagueDto: CreateLeagueDto) {
    return this.prisma.league.create({data: createLeagueDto});
  }

  findAll() {
    return this.prisma.league.findMany();
  }

  findOne(id: number) {
    return this.prisma.league.findUnique({ where: { idLeague:id } });
  }

  update(id: number, updateLeagueDto: UpdateLeagueDto) {
    return this.prisma.league.update({
      where: { idLeague: id },
      data: updateLeagueDto,
  });
  }

  remove(id: number) {
    return this.prisma.league.delete({ where: { idLeague: id } });
  }
}
