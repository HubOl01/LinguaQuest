import { Module } from '@nestjs/common';
import { PhotosForPostService } from './photos-for-post.service';
import { PhotosForPostController } from './photos-for-post.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [PhotosForPostController],
  providers: [PhotosForPostService],
  imports: [PrismaModule],
})
export class PhotosForPostModule {}
