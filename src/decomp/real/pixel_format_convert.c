/* ============================================================================
 * FUN_0058dea0  pixel_format_convert
 * module: gfx/color
 * RGBA pixel to float4 conversion; `param_2` selects channel packing order (0=ARGB,1=RGBA,2=BGRA,3=RGBx,4=BGRx,6=ABGR).
 * raw address: 0x0058dea0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0058dea0(float *param_1,undefined4 param_2,uint param_3)

{
  switch(param_2) {
  case 0:
    *param_1 = (float)(param_3 >> 0x18) / 255.0;
    param_1[1] = (float)((param_3 & 0xff0000) >> 0x10) / 255.0;
    param_1[2] = (float)((param_3 & 0xff00) >> 8) / 255.0;
    param_1[3] = (float)(param_3 & 0xff) / 255.0;
    break;
  case 1:
    param_1[3] = (float)(param_3 >> 0x18) / 255.0;
    param_1[2] = (float)((param_3 & 0xff0000) >> 0x10) / 255.0;
    param_1[1] = (float)((param_3 & 0xff00) >> 8) / 255.0;
    *param_1 = (float)(param_3 & 0xff) / 255.0;
    break;
  case 2:
    param_1[2] = (float)(param_3 >> 0x18) / 255.0;
    param_1[1] = (float)((param_3 & 0xff0000) >> 0x10) / 255.0;
    *param_1 = (float)((param_3 & 0xff00) >> 8) / 255.0;
    param_1[3] = (float)(param_3 & 0xff) / 255.0;
    break;
  case 3:
    param_1[3] = 0.0;
    *param_1 = (float)((param_3 & 0xff0000) >> 0x10) / 255.0;
    param_1[1] = (float)((param_3 & 0xff00) >> 8) / 255.0;
    param_1[2] = (float)(param_3 & 0xff) / 255.0;
    break;
  case 4:
    param_1[3] = 0.0;
    param_1[2] = (float)((param_3 & 0xff0000) >> 0x10) / 255.0;
    param_1[1] = (float)((param_3 & 0xff00) >> 8) / 255.0;
    *param_1 = (float)(param_3 & 0xff) / 255.0;
    break;
  case 6:
    param_1[3] = (float)(param_3 >> 0x18) / 255.0;
    *param_1 = (float)((param_3 & 0xff0000) >> 0x10) / 255.0;
    param_1[1] = (float)((param_3 & 0xff00) >> 8) / 255.0;
    param_1[2] = (float)(param_3 & 0xff) / 255.0;
  }
  return;
}

