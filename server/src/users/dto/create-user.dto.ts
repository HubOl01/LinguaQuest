import { ApiProperty } from '@nestjs/swagger';
import {
  IsBoolean,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
} from 'class-validator';

export class CreateUserDto {
  @ApiProperty({ required: false })
  @IsString()
  @IsOptional()
  VKID?: string;

  @ApiProperty({ required: false })
  @IsString()
  @IsOptional()
  TelegramID?: string;

  @ApiProperty({ required: false, example: 'test@test.com' })
  @IsString()
  @IsOptional()
  email?: string;

  @ApiProperty({ example: 'test' })
  @IsString()
  @IsNotEmpty()
  @IsOptional()
  username: string;

  @ApiProperty({ required: false, example: 'user01' })
  @IsString()
  @IsOptional()
  idUsername?: string;

  @ApiProperty({ required: false, default: false })
  @IsBoolean()
  isAdmin: boolean;

  @ApiProperty({ required: false, default: false })
  isBan: boolean;

  @ApiProperty({ required: false })
  @IsNumber()
  streak: number;

  @ApiProperty({ required: false })
  @IsNumber()
  xp: number;

  // @ApiProperty({ required: false })
  // @IsOptional()
  date_created: Date;
}
