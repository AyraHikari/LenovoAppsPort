.class public Lzui/app/TimePickerDialogX;
.super Lzui/app/ActionDialog;
.source "TimePickerDialogX.java"

# interfaces
.implements Lzui/widget/NumberPickerX$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/TimePickerDialogX$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mAmPm:Lzui/widget/NumberPickerX;

.field private final mAmPmDivider:Landroid/widget/ImageView;

.field private mAmPmStrings:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHour:Lzui/widget/NumberPickerX;

.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mLocale:Ljava/util/Locale;

.field private final mMinutes:Lzui/widget/NumberPickerX;

.field private final mPositiveBtn:Landroid/widget/Button;

.field private final mTimeSetCallback:Lzui/app/TimePickerDialogX$OnTimeSetListener;

.field private final mTitle:Landroid/widget/TextView;

.field private mVibHelper:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
    .locals 2

    .line 97
    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/TimePickerDialogX;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 99
    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0, p1}, Lzui/app/TimePickerDialogX;->setParentContext(Landroid/content/Context;)V

    .line 101
    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mTimeSetCallback:Lzui/app/TimePickerDialogX$OnTimeSetListener;

    .line 102
    iput p4, p0, Lzui/app/TimePickerDialogX;->mInitialHourOfDay:I

    .line 103
    iput p5, p0, Lzui/app/TimePickerDialogX;->mInitialMinute:I

    .line 104
    iput-boolean p6, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    .line 106
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 107
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 108
    iget-object p4, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    sget p5, Lzui/platform/R$attr;->timePickerDialogXLayout:I

    invoke-virtual {p4, p5, p3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 110
    iget p4, p3, Landroid/util/TypedValue;->resourceId:I

    if-lez p4, :cond_0

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget p3, Lzui/platform/R$layout;->time_picker_dialog_x:I

    :goto_0
    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p2}, Lzui/app/TimePickerDialogX;->setView(Landroid/view/View;)V

    const p3, 0x1020019

    .line 113
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mPositiveBtn:Landroid/widget/Button;

    .line 114
    new-instance p4, Lzui/app/TimePickerDialogX$1;

    invoke-direct {p4, p0}, Lzui/app/TimePickerDialogX$1;-><init>(Lzui/app/TimePickerDialogX;)V

    invoke-virtual {p3, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x102001a

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 121
    new-instance p4, Lzui/app/TimePickerDialogX$2;

    invoke-direct {p4, p0}, Lzui/app/TimePickerDialogX$2;-><init>(Lzui/app/TimePickerDialogX;)V

    invoke-virtual {p3, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mLocale:Ljava/util/Locale;

    .line 134
    sget p3, Lzui/platform/R$id;->hour:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzui/widget/NumberPickerX;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    .line 135
    iget-boolean p4, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    const/16 p5, 0xc

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    const/16 p4, 0x17

    .line 136
    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 137
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 138
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-static {}, Lzui/widget/NumberPickerX;->getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object p4

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p3, p5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 141
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 143
    :goto_1
    iget p3, p0, Lzui/app/TimePickerDialogX;->mInitialHourOfDay:I

    invoke-direct {p0, p3, p6}, Lzui/app/TimePickerDialogX;->setCurrentHour(IZ)V

    .line 144
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 145
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 147
    sget p3, Lzui/platform/R$id;->minutes:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzui/widget/NumberPickerX;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    const/16 p4, 0x3b

    .line 148
    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 149
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 150
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-static {}, Lzui/widget/NumberPickerX;->getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object p4

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    .line 151
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    iget p4, p0, Lzui/app/TimePickerDialogX;->mInitialMinute:I

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 152
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 153
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 155
    sget p3, Lzui/platform/R$id;->ampm:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzui/widget/NumberPickerX;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    .line 157
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->getAmPmStrings()V

    .line 158
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 159
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 160
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    iget-object p4, p0, Lzui/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 165
    iget p3, p0, Lzui/app/TimePickerDialogX;->mInitialHourOfDay:I

    if-ge p3, p5, :cond_2

    .line 166
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setValue(I)V

    goto :goto_2

    .line 168
    :cond_2
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 170
    :goto_2
    iget-boolean p3, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    if-eqz p3, :cond_3

    const/16 p6, 0x8

    .line 171
    :cond_3
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setVisibility(I)V

    .line 172
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 173
    sget p3, Lzui/platform/R$id;->ampm_divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPmDivider:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    sget p3, Lzui/platform/R$id;->time_picker_dialog_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/app/TimePickerDialogX;->mTitle:Landroid/widget/TextView;

    .line 178
    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/TimePickerDialogX;->mVibHelper:Lzui/util/VibrationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 84
    invoke-direct/range {v0 .. v6}, Lzui/app/TimePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lzui/app/TimePickerDialogX;)Lzui/app/TimePickerDialogX$OnTimeSetListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/TimePickerDialogX;->mTimeSetCallback:Lzui/app/TimePickerDialogX$OnTimeSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lzui/app/TimePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic access$200(Lzui/app/TimePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic access$300(Lzui/app/TimePickerDialogX;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->isAm()Z

    move-result p0

    return p0
.end method

.method private getAmPmStrings()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 358
    iput-object v0, p0, Lzui/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    .line 359
    iget-object v1, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$string;->time_picker_dialog_x_am:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 360
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    iget-object v1, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$string;->time_picker_dialog_x_pm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method

.method private isAm()Z
    .locals 4

    .line 314
    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 317
    :cond_1
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private needsFormatTitle()Z
    .locals 3

    .line 364
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "zh"

    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private setCurrentHour(IZ)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->getCurrentHour()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->is24HourView()Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0xc

    if-lt p1, p2, :cond_1

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    if-le p1, p2, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    if-nez p1, :cond_2

    move p1, p2

    .line 338
    :cond_2
    :goto_0
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->updateAmPmControl()V

    .line 340
    :cond_3
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p2, p1}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method

.method private updateAmPmControl()V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 346
    invoke-virtual {v0, v1}, Lzui/widget/NumberPickerX;->setVisibility(I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 350
    iget-object v1, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v1, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 352
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/widget/NumberPickerX;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTitle(IIZ)V
    .locals 7

    .line 281
    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->needsFormatTitle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 v0, 0xc

    if-eqz p3, :cond_2

    if-ne p1, v0, :cond_1

    .line 288
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_midnight:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 291
    :cond_1
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_am:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 295
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_noon:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 297
    :cond_3
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_pm:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 301
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    aget-object p3, p3, v2

    goto :goto_0

    :cond_5
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    aget-object p3, p3, v1

    .line 305
    :goto_0
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lzui/platform/R$string;->time_picker_dialog_x_title:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    const-string v6, "%02d"

    if-eqz v5, :cond_6

    new-array v5, v1, [Ljava/lang/Object;

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "%d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v4, v2

    new-array p1, v1, [Ljava/lang/Object;

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object p3, v4, p1

    .line 305
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 310
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 272
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 276
    :cond_0
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAm()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .line 183
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    .line 184
    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 186
    :cond_0
    iget-boolean v1, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 187
    rem-int/lit8 v0, v0, 0xc

    return v0

    .line 189
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .line 194
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 237
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    .line 238
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->isAm()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lzui/app/TimePickerDialogX;->updateTitle(IIZ)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 227
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 229
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "is24hour"

    .line 230
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    .line 231
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p1, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 232
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p1, v1}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 218
    invoke-super {p0}, Lzui/app/ActionDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object v1, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-boolean v1, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    const-string v2, "is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onValueChange(Lzui/widget/NumberPickerX;II)V
    .locals 10

    .line 244
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 245
    iget-boolean p1, p0, Lzui/app/TimePickerDialogX;->mIs24HourView:Z

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    .line 248
    :cond_1
    iget-boolean p1, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    .line 249
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->updateAmPmControl()V

    .line 252
    :cond_2
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->isAm()Z

    move-result p2

    invoke-direct {p0, p3, p1, p2}, Lzui/app/TimePickerDialogX;->updateTitle(IIZ)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    if-ne p1, p2, :cond_4

    .line 254
    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->isAm()Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lzui/app/TimePickerDialogX;->updateTitle(IIZ)V

    goto :goto_1

    .line 255
    :cond_4
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->mAmPm:Lzui/widget/NumberPickerX;

    if-ne p1, p2, :cond_6

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 256
    :goto_0
    iput-boolean v1, p0, Lzui/app/TimePickerDialogX;->mIsAm:Z

    .line 257
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object p2, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p2

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->isAm()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lzui/app/TimePickerDialogX;->updateTitle(IIZ)V

    .line 259
    :cond_6
    :goto_1
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mVibHelper:Lzui/util/VibrationHelper;

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0x32

    const/16 v7, 0x32

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 260
    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_7
    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 212
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->mHour:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, p1}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 213
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->mMinutes:Lzui/widget/NumberPickerX;

    invoke-virtual {p1, p2}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method
