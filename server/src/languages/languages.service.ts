import { Injectable } from '@nestjs/common';
import { CreateLanguageDto } from './dto/create-language.dto';
import { UpdateLanguageDto } from './dto/update-language.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class LanguagesService {
  
  constructor(private prisma: PrismaService) {}

  create(createLanguageDto: CreateLanguageDto) {
    return this.prisma.language.create({data: createLanguageDto});
  }

  findAll() {
    return this.prisma.language.findMany();
  }

  findOne(id: number) {
    return this.prisma.language.findUnique({ where: { idLanguage:id } });
  }

  update(id: number, updateLanguageDto: UpdateLanguageDto) {
    return this.prisma.language.update({
      where: { idLanguage: id },
      data: updateLanguageDto,
  });
}

  remove(id: number) {
    return this.prisma.language.delete({ where: { idLanguage: id } });
  }
}
