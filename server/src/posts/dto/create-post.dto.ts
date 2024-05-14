import { ApiProperty } from '@nestjs/swagger';
import {
  IsBoolean,
  IsDate,
  IsNumber,
  // IsOptional,
  IsString,
} from 'class-validator';

export class CreatePostDto {
  @ApiProperty({ required: false })
  @IsString()
  title: string;
  @ApiProperty({ required: false })
  @IsString()
  description: string;
  @ApiProperty({ required: false, default: true })
  @IsBoolean()
  isDraft: boolean;
  @ApiProperty({ required: false, default: '' })
  @IsString()
  rejectionReason: string;
  // @ApiProperty({ required: true })
  // @IsOptional()
  @IsDate()
  date_created: Date;
  // @ApiProperty({ required: true })
  // @IsOptional()
  @IsDate()
  date_updated: Date;
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
  @ApiProperty({ required: false, default: 3 })
  @IsNumber()
  publicationStatusId: number;
}
