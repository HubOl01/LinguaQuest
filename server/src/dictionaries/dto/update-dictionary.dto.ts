import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateDictionaryDto } from './create-dictionary.dto';
import { IsDate, IsNumber, IsString } from 'class-validator';

export class UpdateDictionaryDto extends PartialType(CreateDictionaryDto) {
    @ApiProperty({ required: true })
    idDictionary: number;
    @ApiProperty({ required: false })
    @IsString()
    content: string;
    @ApiProperty({ required: false })
    @IsString()
    translate: string;
    @ApiProperty({ required: true })
    @IsString()
    transcription: string;
    @ApiProperty({ required: true })
    @IsString()
    audiofile: string;
    @ApiProperty({ required: false })
    @IsNumber()
    userId: number;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}