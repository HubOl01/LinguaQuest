import { ApiProperty } from "@nestjs/swagger";
import { Dictionary } from "@prisma/client";

export class DictionaryEntity implements Dictionary {
    @ApiProperty({ required: true })
    idDictionary: number;
    @ApiProperty({ required: false })
    content: string;
    @ApiProperty({ required: false })
    translate: string;
    @ApiProperty({ required: true })
    transcription: string;
    @ApiProperty({ required: true })
    audiofile: string;
    @ApiProperty({ required: false })
    userId: number;
    @ApiProperty({ required: true })
    date_created: Date;
}