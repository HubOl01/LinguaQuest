import { Module } from '@nestjs/common';
import { LeaguesService } from './leagues.service';
import { LeaguesController } from './leagues.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [LeaguesController],
  providers: [LeaguesService],
  imports: [PrismaModule]
})
export class LeaguesModule {}
