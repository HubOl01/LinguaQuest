import { ApiProperty } from "@nestjs/swagger";
import { IsDate, IsNumber, IsString } from "class-validator";

export class CreateDictionaryDto {

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