import { Module } from '@nestjs/common';
import { ProfilesService } from './profiles.service';
import { ProfilesController } from './profiles.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [ProfilesController],
  providers: [ProfilesService],
  imports: [PrismaModule],
})
export class ProfilesModule {}
