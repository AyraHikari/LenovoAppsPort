.class public Lzui/app/UnitPickerDialog;
.super Lzui/app/ActionDialog;
.source "UnitPickerDialog.java"

# interfaces
.implements Lzui/widget/NumberPickerX$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/UnitPickerDialog$UnitItem;,
        Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;,
        Lzui/app/UnitPickerDialog$OnUnitSetListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_VALUE:I = 0x64

.field private static final DEFAULT_MIN_VALUE:I = 0x0

.field private static final UNIT_ONE:Ljava/lang/String; = "unit1_value"

.field private static final UNIT_TWO:Ljava/lang/String; = "unit2_value"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPositiveBtn:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mUnitName1:Ljava/lang/String;

.field private mUnitName2:Ljava/lang/String;

.field private mUnitSetListener:Lzui/app/UnitPickerDialog$OnUnitSetListener;

.field private mUnitValue1:Lzui/widget/NumberPickerX;

.field private mUnitValue2:Lzui/widget/NumberPickerX;

.field private mUnitValueChangeListener:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

.field private mVibHelper:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
    .locals 2

    .line 128
    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/UnitPickerDialog;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 130
    invoke-virtual {p0}, Lzui/app/UnitPickerDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0, p1}, Lzui/app/UnitPickerDialog;->setParentContext(Landroid/content/Context;)V

    .line 132
    iput-object p3, p0, Lzui/app/UnitPickerDialog;->mUnitSetListener:Lzui/app/UnitPickerDialog$OnUnitSetListener;

    .line 133
    iget-object p2, p0, Lzui/app/UnitPickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 134
    sget p3, Lzui/platform/R$layout;->unit_picker_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020019

    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lzui/app/UnitPickerDialog;->mPositiveBtn:Landroid/widget/Button;

    .line 136
    new-instance v0, Lzui/app/UnitPickerDialog$1;

    invoke-direct {v0, p0}, Lzui/app/UnitPickerDialog$1;-><init>(Lzui/app/UnitPickerDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x102001a

    .line 142
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 143
    new-instance v0, Lzui/app/UnitPickerDialog$2;

    invoke-direct {v0, p0}, Lzui/app/UnitPickerDialog$2;-><init>(Lzui/app/UnitPickerDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x1020016

    .line 153
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lzui/app/UnitPickerDialog;->mTitle:Landroid/widget/TextView;

    .line 154
    invoke-direct {p0, p2, p4, p5}, Lzui/app/UnitPickerDialog;->fillinSelectors(Landroid/view/View;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V

    .line 155
    invoke-virtual {p0, p2}, Lzui/app/UnitPickerDialog;->setView(Landroid/view/View;)V

    .line 156
    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->mVibHelper:Lzui/util/VibrationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 123
    invoke-direct/range {v0 .. v5}, Lzui/app/UnitPickerDialog;-><init>(Landroid/content/Context;ILzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V

    return-void
.end method

.method static synthetic access$000(Lzui/app/UnitPickerDialog;)Lzui/app/UnitPickerDialog$OnUnitSetListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lzui/app/UnitPickerDialog;->mUnitSetListener:Lzui/app/UnitPickerDialog$OnUnitSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 31
    iget-object p0, p0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic access$200(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 31
    iget-object p0, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method private fillItemToSelector(Lzui/app/UnitPickerDialog$UnitItem;Lzui/widget/NumberPickerX;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 227
    iget v0, p1, Lzui/app/UnitPickerDialog$UnitItem;->minValue:I

    if-ltz v0, :cond_0

    .line 228
    iget v0, p1, Lzui/app/UnitPickerDialog$UnitItem;->minValue:I

    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 232
    :goto_0
    iget v0, p1, Lzui/app/UnitPickerDialog$UnitItem;->maxValue:I

    if-ltz v0, :cond_1

    .line 233
    iget v0, p1, Lzui/app/UnitPickerDialog$UnitItem;->maxValue:I

    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x64

    .line 235
    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 237
    :goto_1
    iget v0, p1, Lzui/app/UnitPickerDialog$UnitItem;->value:I

    if-ltz v0, :cond_2

    .line 238
    iget v0, p1, Lzui/app/UnitPickerDialog$UnitItem;->value:I

    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 240
    :cond_2
    invoke-virtual {p1}, Lzui/app/UnitPickerDialog$UnitItem;->getFormaterType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 245
    :cond_3
    invoke-static {}, Lzui/widget/NumberPickerX;->getThreeDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    goto :goto_2

    .line 242
    :cond_4
    invoke-static {}, Lzui/widget/NumberPickerX;->getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    .line 248
    :goto_2
    iget-object p1, p1, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private fillinSelectors(Landroid/view/View;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
    .locals 2

    .line 253
    sget v0, Lzui/platform/R$id;->value1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzui/widget/NumberPickerX;

    iput-object v0, p0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    .line 254
    invoke-virtual {v0, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 255
    sget v0, Lzui/platform/R$id;->unit1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    iget-object v1, p2, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    iput-object v1, p0, Lzui/app/UnitPickerDialog;->mUnitName1:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    invoke-direct {p0, p2, v1, v0}, Lzui/app/UnitPickerDialog;->fillItemToSelector(Lzui/app/UnitPickerDialog$UnitItem;Lzui/widget/NumberPickerX;Landroid/widget/TextView;)V

    .line 258
    sget p2, Lzui/platform/R$id;->value2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lzui/widget/NumberPickerX;

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    .line 259
    invoke-virtual {p2, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 260
    sget p2, Lzui/platform/R$id;->unit2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 261
    iget-object p2, p3, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->mUnitName2:Ljava/lang/String;

    .line 262
    iget-object p2, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    invoke-direct {p0, p3, p2, p1}, Lzui/app/UnitPickerDialog;->fillItemToSelector(Lzui/app/UnitPickerDialog$UnitItem;Lzui/widget/NumberPickerX;Landroid/widget/TextView;)V

    return-void
.end method

.method private updateTitle(II)V
    .locals 6

    .line 267
    iget-object v0, p0, Lzui/app/UnitPickerDialog;->mUnitValueChangeListener:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

    if-eqz v0, :cond_0

    .line 268
    iget-object v3, p0, Lzui/app/UnitPickerDialog;->mUnitName1:Ljava/lang/String;

    iget-object v5, p0, Lzui/app/UnitPickerDialog;->mUnitName2:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;->getCustomizedTitle(Lzui/app/UnitPickerDialog;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lzui/app/UnitPickerDialog;->mUnitName1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lzui/app/UnitPickerDialog;->mUnitName2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_1
    iget-object p1, p0, Lzui/app/UnitPickerDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 213
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lzui/app/UnitPickerDialog;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    .line 191
    iget-object p1, p0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object v0, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/UnitPickerDialog;->updateTitle(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "unit1_value"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "unit2_value"

    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 207
    iget-object v1, p0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 208
    iget-object v0, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, p1}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 196
    invoke-super {p0}, Lzui/app/ActionDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "unit1_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-object v1, p0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "unit2_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onValueChange(Lzui/widget/NumberPickerX;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 162
    iget-object v2, v0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    .line 163
    iget-object v3, v0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v3

    .line 164
    iget-object v4, v0, Lzui/app/UnitPickerDialog;->mUnitValue1:Lzui/widget/NumberPickerX;

    const/4 v5, 0x1

    if-ne v1, v4, :cond_0

    move/from16 v2, p3

    goto :goto_0

    .line 167
    :cond_0
    iget-object v4, v0, Lzui/app/UnitPickerDialog;->mUnitValue2:Lzui/widget/NumberPickerX;

    if-ne v1, v4, :cond_1

    move/from16 v3, p3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 172
    invoke-direct {v0, v2, v3}, Lzui/app/UnitPickerDialog;->updateTitle(II)V

    .line 173
    iget-object v6, v0, Lzui/app/UnitPickerDialog;->mVibHelper:Lzui/util/VibrationHelper;

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    const/16 v8, 0x1b

    const/16 v9, 0x1b

    const/16 v10, 0xa

    const/16 v11, 0xa

    const/16 v12, 0x32

    const/16 v13, 0x32

    const/4 v14, -0x1

    const/4 v15, 0x1

    .line 174
    invoke-virtual/range {v6 .. v15}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    .line 182
    :cond_2
    iget-object v1, v0, Lzui/app/UnitPickerDialog;->mUnitValueChangeListener:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

    if-eqz v1, :cond_3

    .line 183
    invoke-interface {v1, v0, v2, v3}, Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;->onUnitValueChange(Lzui/app/UnitPickerDialog;II)V

    :cond_3
    return-void
.end method

.method public setOnUnitValueChangeListenter(Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lzui/app/UnitPickerDialog;->mUnitValueChangeListener:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

    return-void
.end method
