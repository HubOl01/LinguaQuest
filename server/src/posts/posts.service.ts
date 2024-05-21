import { Injectable } from '@nestjs/common';
import { CreatePostDto } from './dto/create-post.dto';
import { UpdatePostDto } from './dto/update-post.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class PostsService {
  constructor(private prisma: PrismaService) {}

  create(createPostDto: CreatePostDto) {
    return this.prisma.post.create({ data: createPostDto });
  }

  findAll() {
    return this.prisma.post.findMany({ orderBy: { date_created: 'desc' } });
  }
  findOnlyUser(idUser: number) {
    return this.prisma.post.findMany({
      where: { userId: idUser },
      orderBy: { date_created: 'desc' },
    });
  }
  findOnlyPublication() {
    return this.prisma.post.findMany({
      where: { publicationStatusId: 1 },
      orderBy: { date_created: 'desc' },
    });
  }
  findOnlyModeration() {
    return this.prisma.post.findMany({
      where: { publicationStatusId: 3 },
      orderBy: { date_created: 'desc' },
    });
  }

  findOne(id: number) {
    return this.prisma.post.findUnique({ where: { idPost: id } });
  }

  update(id: number, updatePostDto: UpdatePostDto) {
    return this.prisma.post.update({
      where: { idPost: id },
      data: updatePostDto,
    });
  }

  remove(id: number) {
    return this.prisma.post.delete({ where: { idPost: id } });
  }
}
