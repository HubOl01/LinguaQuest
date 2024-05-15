import { Injectable } from '@nestjs/common';
import { CreatePhotosForPostDto } from './dto/create-photos-for-post.dto';
import { UpdatePhotosForPostDto } from './dto/update-photos-for-post.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class PhotosForPostService {
  constructor(private prisma: PrismaService) {}
  create(createPhotosForPostDto: CreatePhotosForPostDto) {
    return this.prisma.photoForPost.create({ data: createPhotosForPostDto });
  }

  findAll() {
    return this.prisma.photoForPost.findMany();
  }

  findOne(id: number) {
    return this.prisma.photoForPost.findUnique({
      where: { idPhoto: id },
    });
  }

  update(id: number, updatePhotosForPostDto: UpdatePhotosForPostDto) {
    return this.prisma.photoForPost.update({
      where: { idPhoto: id },
      data: updatePhotosForPostDto,
    });
  }

  remove(id: number) {
    return this.prisma.photoForPost.delete({
      where: { idPhoto: id },
    });
  }
}
