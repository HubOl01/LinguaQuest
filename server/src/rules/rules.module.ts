import { Module } from '@nestjs/common';
import { RulesService } from './rules.service';
import { RulesController } from './rules.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [RulesController],
  providers: [RulesService],
  imports: [PrismaModule],
})
export class RulesModule { }