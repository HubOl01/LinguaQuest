import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateGlobaldictionaryDto } from './create-globaldictionary.dto';
import { IsDate, IsString } from 'class-validator';

export class UpdateGlobaldictionaryDto extends PartialType(CreateGlobaldictionaryDto) {
    @ApiProperty({ required: true })
    idGlobaldictionary: number;
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
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}
