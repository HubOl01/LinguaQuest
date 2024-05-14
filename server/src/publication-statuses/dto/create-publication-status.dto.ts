import { ApiProperty } from '@nestjs/swagger';
import { IsString } from 'class-validator';

export class CreatePublicationStatusDto {
  @ApiProperty({ required: false })
  @IsString()
  status: string;
}
