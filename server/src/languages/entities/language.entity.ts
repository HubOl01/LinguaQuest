import { ApiProperty } from '@nestjs/swagger';
import { Language } from '@prisma/client';

export class LanguageEntity implements Language {
    @ApiProperty({ required: false })
    idLanguage:number;
    @ApiProperty()
    language:string;
    @ApiProperty()
    flagUrl:string;
    @ApiProperty({ required: false })
    date_created:Date;

}
