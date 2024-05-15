import { ApiProperty } from '@nestjs/swagger';
import { IsDate, IsNumber, IsOptional, IsString } from 'class-validator';

export class CreateProfileDto {
  @ApiProperty({ required: false })
  @IsString()
  @IsOptional()
  name: string;
  @ApiProperty({ required: false })
  @IsDate()
  birthday: Date;
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
}
