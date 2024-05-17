import { Module } from '@nestjs/common';
import { AchievementsService } from './achievements.service';
import { AchievementsController } from './achievements.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [AchievementsController],
  providers: [AchievementsService],
  imports: [PrismaModule]
})
export class AchievementsModule {}
