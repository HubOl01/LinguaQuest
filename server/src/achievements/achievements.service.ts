import { Injectable } from '@nestjs/common';
import { CreateAchievementDto } from './dto/create-achievement.dto';
import { UpdateAchievementDto } from './dto/update-achievement.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class AchievementsService {

  constructor(private prisma: PrismaService) {}
  
  create(createAchievementDto: CreateAchievementDto) {
    return this.prisma.achievement.create({data: createAchievementDto});
  }

  findAll() {
    return this.prisma.achievement.findMany();
  }

  findOne(id: number) {
    return this.prisma.achievement.findUnique({ where: { idAchievement:id } });
  }

  update(id: number, updateAchievementDto: UpdateAchievementDto) {
    return this.prisma.achievement.update({
      where: { idAchievement: id },
      data: updateAchievementDto,
  });
  }

  remove(id: number) {
    return this.prisma.achievement.delete({ where: { idAchievement: id } });
  }
}
