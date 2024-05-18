import { Injectable } from '@nestjs/common';
import { CreateCardwordDto } from './dto/create-cardword.dto';
import { UpdateCardwordDto } from './dto/update-cardword.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class CardwordsService {
  constructor(private prisma: PrismaService) { }
  create(createCardwordDto: CreateCardwordDto) {
    return this.prisma.cardWord.create({ data: createCardwordDto });
  }

  findAll() {
    return this.prisma.cardWord.findMany();
  }

  findOne(id: number) {
    return this.prisma.cardWord.findUnique({ where: { idCardWord: id } });
  }

  update(id: number, updateCardwordDto: UpdateCardwordDto) {
    return this.prisma.cardWord.update({ where: { idCardWord: id }, data: updateCardwordDto });
  }

  remove(id: number) {
    return this.prisma.cardWord.delete({ where: { idCardWord: id } });
  }
}
