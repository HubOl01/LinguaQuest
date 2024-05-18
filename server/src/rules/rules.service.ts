import { Injectable } from '@nestjs/common';
import { CreateRuleDto } from './dto/create-rule.dto';
import { UpdateRuleDto } from './dto/update-rule.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class RulesService {
  constructor(private prisma: PrismaService) { }
  create(createRuleDto: CreateRuleDto) {
    return this.prisma.rule.create({ data: createRuleDto });;
  }

  findAll() {
    return this.prisma.rule.findMany();
  }

  findOne(id: number) {
    return this.prisma.rule.findUnique({ where: { idRule: id } });
  }

  update(id: number, updateRuleDto: UpdateRuleDto) {
    return this.prisma.rule.update({ where: { idRule: id }, data: updateRuleDto });
  }

  remove(id: number) {
    return this.prisma.rule.delete({ where: { idRule: id } });
  }
}