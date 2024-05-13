import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateModuleDto } from './create-module.dto';
import { IsNotEmpty, IsString } from 'class-validator';

export class UpdateModuleDto extends PartialType(CreateModuleDto) {
  @ApiProperty()
  idModule: number;

  @ApiProperty()
  languageId: number;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  title: string;

  @ApiProperty({ required: false })
  @IsString()
  description: string;

  @ApiProperty({ required: false })
  date_created: Date;
}
