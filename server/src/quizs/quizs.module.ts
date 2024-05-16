import { Module } from '@nestjs/common';
import { QuizsService } from './quizs.service';
import { QuizsController } from './quizs.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [QuizsController],
  providers: [QuizsService],
  imports: [PrismaModule],
})
export class QuizsModule {}
import { Module } from '@nestjs/common';
import { QuizsService } from './quizs.service';
import { QuizsController } from './quizs.controller';
import { PrismaModule } from 'src/prisma/prisma.module';


@Module({
  controllers: [QuizsController],
  providers: [QuizsService],
  imports: [PrismaModule],

})
export class QuizsModule {}
