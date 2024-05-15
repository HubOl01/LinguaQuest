import { Injectable } from '@nestjs/common';
import { CreatePublicationStatusDto } from './dto/create-publication-status.dto';
import { UpdatePublicationStatusDto } from './dto/update-publication-status.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class PublicationStatusesService {
  constructor(private prisma: PrismaService) {}

  create(createPublicationStatusDto: CreatePublicationStatusDto) {
    return this.prisma.publicationStatus.create({
      data: createPublicationStatusDto,
    });
  }

  findAll() {
    return this.prisma.publicationStatus.findMany();
  }

  findOne(id: number) {
    return this.prisma.publicationStatus.findUnique({
      where: { idPublicationStatus: id },
    });
  }

  update(id: number, updatePublicationStatusDto: UpdatePublicationStatusDto) {
    return this.prisma.publicationStatus.update({
      where: { idPublicationStatus: id },
      data: updatePublicationStatusDto,
    });
  }

  remove(id: number) {
    return this.prisma.publicationStatus.delete({
      where: { idPublicationStatus: id },
    });
  }
}
