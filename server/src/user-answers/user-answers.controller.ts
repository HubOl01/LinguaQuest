import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { UserAnswersService } from './user-answers.service';
import { CreateUserAnswerDto } from './dto/create-user-answer.dto';
import { UpdateUserAnswerDto } from './dto/update-user-answer.dto';
import { ApiTags } from '@nestjs/swagger';

@Controller('user-answers')
@ApiTags('user-answers')
export class UserAnswersController {
  constructor(private readonly userAnswersService: UserAnswersService) {}

  @Post()
  create(@Body() createUserAnswerDto: CreateUserAnswerDto) {
    return this.userAnswersService.create(createUserAnswerDto);
  }

  @Get()
  findAll() {
    return this.userAnswersService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.userAnswersService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateUserAnswerDto: UpdateUserAnswerDto,
  ) {
    return this.userAnswersService.update(+id, updateUserAnswerDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.userAnswersService.remove(+id);
  }
}
