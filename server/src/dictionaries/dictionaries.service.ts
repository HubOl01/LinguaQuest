import { Injectable } from '@nestjs/common';
import { CreateDictionaryDto } from './dto/create-dictionary.dto';
import { UpdateDictionaryDto } from './dto/update-dictionary.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class DictionariesService {
  constructor(private prisma: PrismaService) { }
  create(createDictionaryDto: CreateDictionaryDto) {
    return this.prisma.dictionary.create({ data: createDictionaryDto });
  }

  findAll() {
    return this.prisma.dictionary.findMany();
  }

  findOne(id: number) {
    return this.prisma.dictionary.findUnique({ where: { idDictionary: id } });
  }

  update(id: number, updateDictionaryDto: UpdateDictionaryDto) {
    return this.prisma.dictionary.update({ where: { idDictionary: id }, data: updateDictionaryDto });
  }

  remove(id: number) {
    return this.prisma.dictionary.delete({ where: { idDictionary: id } });
  }
}
