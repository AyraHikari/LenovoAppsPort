.class public Lzui/app/DatePickerDialogX;
.super Lzui/app/ActionDialog;
.source "DatePickerDialogX.java"

# interfaces
.implements Lzui/widget/NumberPickerX$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/DatePickerDialogX$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final MONTH_MAX_LENGTH_IN_TITLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DatePickerDialogX"

.field private static final YEAR:Ljava/lang/String; = "year"

.field private static mMonthValues:[Ljava/lang/String;

.field private static mWeekValues:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mDateSetListener:Lzui/app/DatePickerDialogX$OnDateSetListener;

.field private final mDay:Lzui/widget/NumberPickerX;

.field private mLocale:Ljava/util/Locale;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonth:Lzui/widget/NumberPickerX;

.field private mNumberOfMonths:I

.field private final mPositiveBtn:Landroid/widget/Button;

.field private mTempDate:Ljava/util/Calendar;

.field private final mTitle:Landroid/widget/TextView;

.field private mVibHelper:Lzui/util/VibrationHelper;

.field private final mYear:Lzui/widget/NumberPickerX;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILzui/app/DatePickerDialogX$OnDateSetListener;III)V
    .locals 4

    .line 101
    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/DatePickerDialogX;->resolveDialogTheme(Landroid/content/Context;III)I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 103
    invoke-virtual {p0}, Lzui/app/DatePickerDialogX;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0, p1}, Lzui/app/DatePickerDialogX;->setParentContext(Landroid/content/Context;)V

    .line 105
    iput-object p3, p0, Lzui/app/DatePickerDialogX;->mDateSetListener:Lzui/app/DatePickerDialogX$OnDateSetListener;

    .line 106
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$array;->datePickerXWeek:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lzui/app/DatePickerDialogX;->mWeekValues:[Ljava/lang/String;

    .line 107
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$array;->datePickerXMonth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lzui/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    .line 108
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->mLocale:Ljava/util/Locale;

    .line 109
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 110
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lzui/platform/R$attr;->datePickerDialogXLayout:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget v1, Lzui/platform/R$layout;->date_picker_dialog_x:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    invoke-virtual {p0, p2}, Lzui/app/DatePickerDialogX;->setView(Landroid/view/View;)V

    const v1, 0x1020019

    .line 116
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mPositiveBtn:Landroid/widget/Button;

    .line 117
    new-instance v2, Lzui/app/DatePickerDialogX$1;

    invoke-direct {v2, p0}, Lzui/app/DatePickerDialogX$1;-><init>(Lzui/app/DatePickerDialogX;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a

    .line 123
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 124
    new-instance v2, Lzui/app/DatePickerDialogX$2;

    invoke-direct {v2, p0}, Lzui/app/DatePickerDialogX$2;-><init>(Lzui/app/DatePickerDialogX;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    .line 136
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    .line 137
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    .line 138
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    .line 139
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lzui/app/DatePickerDialogX;->mNumberOfMonths:I

    .line 141
    sget v1, Lzui/platform/R$id;->year:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    .line 142
    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 144
    sget v1, Lzui/platform/R$id;->month:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    .line 145
    invoke-virtual {v1, v0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 146
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    iget v2, p0, Lzui/app/DatePickerDialogX;->mNumberOfMonths:I

    invoke-virtual {v1, v2}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 147
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    sget-object v2, Lzui/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 150
    sget v1, Lzui/platform/R$id;->day:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    .line 151
    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    .line 153
    sget v1, Lzui/platform/R$id;->date_picker_dialog_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->mTitle:Landroid/widget/TextView;

    .line 155
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 156
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/16 v1, 0x7b2

    invoke-virtual {p2, v1, p3, v0}, Ljava/util/Calendar;->set(III)V

    .line 157
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lzui/app/DatePickerDialogX;->setMinDate(J)V

    .line 158
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 159
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/16 p3, 0x7f5

    const/16 v0, 0xb

    const/16 v1, 0x1f

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 160
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lzui/app/DatePickerDialogX;->setMaxDate(J)V

    .line 161
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 163
    invoke-direct {p0, p4, p5, p6}, Lzui/app/DatePickerDialogX;->setDate(III)V

    .line 164
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateSpinners()V

    .line 166
    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->mVibHelper:Lzui/util/VibrationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzui/app/DatePickerDialogX$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 88
    invoke-direct/range {v0 .. v6}, Lzui/app/DatePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/DatePickerDialogX$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic access$000(Lzui/app/DatePickerDialogX;)Lzui/app/DatePickerDialogX$OnDateSetListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/DatePickerDialogX;->mDateSetListener:Lzui/app/DatePickerDialogX$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic access$200(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic access$300(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    .line 41
    iget-object p0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 358
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 361
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 362
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private setDate(III)V
    .locals 1

    .line 308
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 309
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 312
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 6

    .line 318
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 320
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 321
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 322
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    sget-object v5, Lzui/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 324
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 325
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 328
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 329
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 330
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    sget-object v5, Lzui/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 332
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 333
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 336
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 337
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 338
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    sget-object v5, Lzui/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 340
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 341
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 345
    :goto_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    .line 346
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    .line 347
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 350
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 351
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 352
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lzui/widget/NumberPickerX;->setValue(I)V

    .line 353
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateTitle()V

    return-void
.end method

.method private updateTitle()V
    .locals 11

    .line 294
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 296
    sget-object v1, Lzui/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 297
    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "en_US"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 298
    :goto_0
    iget-object v5, p0, Lzui/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lzui/platform/R$string;->date_picker_dialog_x_title:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    .line 300
    invoke-virtual {v9}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "%d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 301
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    .line 302
    invoke-virtual {v8}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v10

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    sget-object v1, Lzui/app/DatePickerDialogX;->mWeekValues:[Ljava/lang/String;

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    aput-object v0, v7, v4

    .line 298
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 288
    :cond_0
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 179
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 209
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 195
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .line 175
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 171
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateTitle()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 233
    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 235
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 236
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 237
    invoke-direct {p0, v0, v1, p1}, Lzui/app/DatePickerDialogX;->setDate(III)V

    .line 238
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateSpinners()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 224
    invoke-super {p0}, Lzui/app/ActionDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onValueChange(Lzui/widget/NumberPickerX;II)V
    .locals 10

    .line 244
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 246
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mDay:Lzui/widget/NumberPickerX;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v0, :cond_0

    .line 247
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMonth:Lzui/widget/NumberPickerX;

    if-ne p1, v0, :cond_3

    const/16 p1, 0xb

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_1

    .line 250
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-ne p3, p1, :cond_2

    .line 252
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 p2, -0x1

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mYear:Lzui/widget/NumberPickerX;

    if-ne p1, p2, :cond_5

    .line 257
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 262
    :goto_0
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    .line 263
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lzui/app/DatePickerDialogX;->setDate(III)V

    .line 264
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateSpinners()V

    .line 265
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mVibHelper:Lzui/util/VibrationHelper;

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0x32

    const/16 v7, 0x32

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 266
    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_4
    return-void

    .line 259
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 213
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 214
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 219
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 199
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 205
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateSpinners()V

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lzui/app/DatePickerDialogX;->setDate(III)V

    .line 191
    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->updateSpinners()V

    return-void
.end method
