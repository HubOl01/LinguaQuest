import { ApiProperty } from '@nestjs/swagger';
import { Module } from '@prisma/client';

export class ModuleEntity implements Module {
  @ApiProperty({ required: false }) //Присваивается автоматически, потому false
  idModule: number;
  @ApiProperty()
  languageId: number;
  @ApiProperty()
  title: string;
  @ApiProperty({ required: false })
  description: string;
  @ApiProperty({ required: false })
  date_created: Date;
}
