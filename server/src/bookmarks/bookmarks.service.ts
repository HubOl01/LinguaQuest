import { Injectable } from '@nestjs/common';
import { CreateBookmarkDto } from './dto/create-bookmark.dto';
import { UpdateBookmarkDto } from './dto/update-bookmark.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class BookmarksService {
  constructor(private prisma: PrismaService) { }
  create(createBookmarkDto: CreateBookmarkDto) {
    return this.prisma.bookmark.create({ data: createBookmarkDto });
  }

  findAll() {
    return this.prisma.bookmark.findMany();
  }

  findOne(id: number) {
    return this.prisma.bookmark.findUnique({ where: { idBookmark: id } });
  }

  update(id: number, updateBookmarkDto: UpdateBookmarkDto) {
    return this.prisma.bookmark.update({ where: { idBookmark: id }, data: updateBookmarkDto });
  }

  remove(id: number) {
    return this.prisma.bookmark.delete({ where: { idBookmark: id } });
  }
}