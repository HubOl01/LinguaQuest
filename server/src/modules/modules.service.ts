import { Injectable } from '@nestjs/common';
import { CreateModuleDto } from './dto/create-module.dto';
import { UpdateModuleDto } from './dto/update-module.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ModulesService {
  constructor(private prisma: PrismaService) {}
  create(createModuleDto: CreateModuleDto) {
    return this.prisma.module.create({ data: createModuleDto });
  }

  findAll() {
    return this.prisma.module.findMany();
  }

  findOne(id: number) {
    return this.prisma.module.findUnique({ where: { idModule: id } });
  }

  update(id: number, updateModuleDto: UpdateModuleDto) {
    return this.prisma.module.update({
      where: { idModule: id },
      data: updateModuleDto,
    });
  }

  remove(id: number) {
    return this.prisma.module.delete({ where: { idModule: id } });
  }
}
