import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreatePublicationStatusDto } from './create-publication-status.dto';
import { IsNumber, IsString } from 'class-validator';

export class UpdatePublicationStatusDto extends PartialType(
  CreatePublicationStatusDto,
) {
  @ApiProperty({ required: true })
  @IsNumber()
  idPublicationStatus: number;
  @ApiProperty({ required: false })
  @IsString()
  status: string;
}
