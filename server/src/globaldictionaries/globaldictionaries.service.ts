import { Injectable } from '@nestjs/common';
import { CreateGlobaldictionaryDto } from './dto/create-globaldictionary.dto';
import { UpdateGlobaldictionaryDto } from './dto/update-globaldictionary.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class GlobaldictionariesService {
  constructor(private prisma: PrismaService) { }
  create(createGlobaldictionaryDto: CreateGlobaldictionaryDto) {
    return this.prisma.globalDictionary.create({ data: createGlobaldictionaryDto });
  }

  findAll() {
    return this.prisma.globalDictionary.findMany();
  }

  findOne(id: number) {
    return this.prisma.globalDictionary.findUnique({ where: { idGlobalDictionary: id } });
  }

  update(id: number, updateGlobaldictionaryDto: UpdateGlobaldictionaryDto) {
    return this.prisma.globalDictionary.update({ where: { idGlobalDictionary: id }, data: updateGlobaldictionaryDto });
  }

  remove(id: number) {
    return this.prisma.globalDictionary.delete({ where: { idGlobalDictionary: id } });
  }
}
