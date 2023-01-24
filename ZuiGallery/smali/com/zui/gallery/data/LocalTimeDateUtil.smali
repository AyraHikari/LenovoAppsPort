.class public Lcom/zui/gallery/data/LocalTimeDateUtil;
.super Ljava/lang/Object;
.source "LocalTimeDateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;
    }
.end annotation


# static fields
.field private static DAY:I = 0x0

.field public static final DAY_DATETAKEN_STEP:J = 0x5265c00L

.field public static final FIXED_TIME_STEP:J = 0x36ee800L

.field public static final HOUR_DATETAKEN_STEP:J = 0x36ee80L

.field private static LOCAL:Ljava/util/Locale; = null

.field public static final MINUTE_DATETAKEN_STEP:J = 0xea60L

.field private static MONTH:I = 0x0

.field private static final MONTH_EN:[Ljava/lang/String;

.field public static S_DAY:Ljava/lang/String; = null

.field public static S_MONTH:Ljava/lang/String; = null

.field public static S_THIS_MONTH:Ljava/lang/String; = null

.field public static S_THIS_WEEK:Ljava/lang/String; = null

.field public static S_THIS_YEAR:Ljava/lang/String; = null

.field public static S_TODAY:Ljava/lang/String; = null

.field public static S_YEAR:Ljava/lang/String; = null

.field public static S_YESTERDAY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalTimeDateUtil"

.field public static WEEKS:[Ljava/lang/String;

.field private static YEAR:I

.field private static volatile instance:Lcom/zui/gallery/data/LocalTimeDateUtil;

.field private static isEnglishLanguage:Z

.field private static thisMonth:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

.field private static thisWeek:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

.field private static thisYear:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

.field private static today:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

.field private static weekEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static yesterday:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;


# instance fields
.field private context:Landroid/content/Context;

.field private mCalendar:Ljava/util/Calendar;

.field private timeEntriese:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->weekEntry:Ljava/util/List;

    const-string v1, "January"

    const-string v2, "February"

    const-string v3, "March"

    const-string v4, "April"

    const-string v5, "May"

    const-string v6, "June"

    const-string v7, "July"

    const-string v8, "August"

    const-string v9, "September"

    const-string v10, "October"

    const-string v11, "November"

    const-string v12, "December"

    .line 66
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->MONTH_EN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->timeEntriese:Ljava/util/Map;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    .line 79
    iput-object p1, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->context:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->init()V

    return-void
.end method

.method public static getDateName(Ljava/util/Calendar;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_YEAR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_MONTH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_DAY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    return-object v0
.end method

.method private getDouble(I)Ljava/lang/String;
    .locals 2

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/gallery/data/LocalTimeDateUtil;
    .locals 2

    .line 68
    sget-object v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->instance:Lcom/zui/gallery/data/LocalTimeDateUtil;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/zui/gallery/data/LocalTimeDateUtil;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->instance:Lcom/zui/gallery/data/LocalTimeDateUtil;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/zui/gallery/data/LocalTimeDateUtil;

    invoke-direct {v1, p0}, Lcom/zui/gallery/data/LocalTimeDateUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->instance:Lcom/zui/gallery/data/LocalTimeDateUtil;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 75
    :cond_1
    :goto_0
    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->instance:Lcom/zui/gallery/data/LocalTimeDateUtil;

    return-object p0
.end method

.method public static getLocalTimeName(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Ljava/lang/String;
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 318
    invoke-static {p0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isToday(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_TODAY:Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isYesterday(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    sget-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_YESTERDAY:Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {p0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isWeek(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    sget-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->weekEntry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    .line 324
    iget-wide v3, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    iget-wide v5, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    iget-wide v5, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 325
    iget-object v1, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getMonthEn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 426
    sget-boolean v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->isEnglishLanguage:Z

    if-eqz v0, :cond_0

    const-string v0, "/"

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 430
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 431
    sget-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->MONTH_EN:[Ljava/lang/String;

    sget-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->MONTH_EN:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v0, v2

    aget-object p0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LocalTimeDateUtil"

    const-string v1, "parse index exception "

    .line 433
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static getStartTimeOfDay(J)J
    .locals 2

    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 390
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 391
    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getTimeOffSet(Ljava/util/Calendar;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static getTimeOffSet(Ljava/util/Calendar;)J
    .locals 7

    const/16 v0, 0xb

    .line 373
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 374
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    .line 375
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    .line 376
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v3, v0

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    int-to-long v0, v1

    const-wide/32 v5, 0xea60

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    add-long/2addr v3, v0

    int-to-long v0, p0

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public static getTimeStartAndEndOfDay(J)[J
    .locals 4

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getTimeOffSet(Ljava/util/Calendar;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 p0, 0x1

    aput-wide v0, v2, p0

    return-object v2
.end method

.method private init()V
    .locals 30

    move-object/from16 v0, p0

    .line 100
    iget-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002e1

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_YEAR:Ljava/lang/String;

    const v2, 0x7f1001ad

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_MONTH:Ljava/lang/String;

    const v2, 0x7f1000b7

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_DAY:Ljava/lang/String;

    const v2, 0x7f100293

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_TODAY:Ljava/lang/String;

    const v2, 0x7f1002e2

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_YESTERDAY:Ljava/lang/String;

    const v2, 0x7f100286

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_YEAR:Ljava/lang/String;

    const v2, 0x7f100284

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_MONTH:Ljava/lang/String;

    const v2, 0x7f100285

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_WEEK:Ljava/lang/String;

    const v2, 0x7f02000f

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->WEEKS:[Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->LOCAL:Ljava/util/Locale;

    .line 114
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->isEnglishLanguage:Z

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    .line 117
    sget-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->weekEntry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 118
    iget-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 119
    sput v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->YEAR:I

    .line 120
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 121
    sput v5, Lcom/zui/gallery/data/LocalTimeDateUtil;->MONTH:I

    .line 122
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 123
    sput v10, Lcom/zui/gallery/data/LocalTimeDateUtil;->DAY:I

    .line 124
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v11, 0x7

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 125
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v13

    .line 130
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v1

    move v6, v10

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 131
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->clear(I)V

    .line 132
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long v7, v3, v5

    const-wide/16 v21, 0x1

    sub-long v17, v7, v21

    .line 134
    new-instance v7, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sget-object v19, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_TODAY:Ljava/lang/String;

    const/16 v20, 0x0

    move-object v14, v7

    move-wide v15, v3

    invoke-direct/range {v14 .. v20}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    sput-object v7, Lcom/zui/gallery/data/LocalTimeDateUtil;->today:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sub-int/2addr v10, v2

    int-to-long v7, v10

    mul-long/2addr v7, v5

    sub-long v15, v3, v7

    int-to-long v7, v13

    mul-long/2addr v7, v5

    add-long/2addr v7, v15

    sub-long v17, v7, v21

    .line 140
    new-instance v7, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sget-object v19, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_MONTH:Ljava/lang/String;

    move-object v14, v7

    invoke-direct/range {v14 .. v20}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    sput-object v7, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisMonth:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sub-long v26, v3, v21

    sub-long v3, v26, v5

    add-long v3, v3, v21

    .line 145
    new-instance v7, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sget-object v28, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_YESTERDAY:Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v23, v7

    move-wide/from16 v24, v3

    invoke-direct/range {v23 .. v29}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    sput-object v7, Lcom/zui/gallery/data/LocalTimeDateUtil;->yesterday:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    add-int/lit8 v12, v12, -0x1

    if-gtz v12, :cond_0

    move v12, v11

    :cond_0
    sub-long v16, v3, v21

    const/4 v7, 0x0

    move-wide v14, v3

    :goto_0
    const/4 v3, 0x6

    if-ge v7, v3, :cond_2

    sub-long v26, v14, v21

    sub-long v3, v26, v5

    add-long v14, v3, v21

    add-int/lit8 v12, v12, -0x1

    if-gtz v12, :cond_1

    move v12, v11

    .line 167
    :cond_1
    sget-object v3, Lcom/zui/gallery/data/LocalTimeDateUtil;->weekEntry:Ljava/util/List;

    new-instance v4, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sget-object v8, Lcom/zui/gallery/data/LocalTimeDateUtil;->WEEKS:[Ljava/lang/String;

    aget-object v28, v8, v12

    const/16 v29, 0x0

    move-object/from16 v23, v4

    move-wide/from16 v24, v14

    invoke-direct/range {v23 .. v29}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 171
    :cond_2
    new-instance v3, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sget-object v18, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_WEEK:Ljava/lang/String;

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    sput-object v3, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisWeek:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    .line 175
    iget-object v3, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v1

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 176
    iget-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 177
    iget-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v2}, Ljava/util/Calendar;->roll(IZ)V

    .line 178
    iget-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v6, v1, v21

    .line 179
    new-instance v1, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    sget-object v8, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_YEAR:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    sput-object v1, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisYear:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    return-void
.end method

.method public static isSameDay(JJ)Z
    .locals 1

    .line 410
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 411
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x5

    .line 412
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 413
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 414
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSimpleChinese()Z
    .locals 2

    .line 484
    sget-object v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->LOCAL:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 487
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isThisMonth(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z
    .locals 4

    .line 344
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    sget-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisMonth:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisMonth:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z
    .locals 4

    .line 336
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    sget-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisYear:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisYear:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isToday(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z
    .locals 4

    .line 366
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    sget-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->today:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->today:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWeek(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z
    .locals 4

    .line 352
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    sget-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisWeek:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->thisWeek:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isYesterday(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z
    .locals 4

    .line 359
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    sget-object v2, Lcom/zui/gallery/data/LocalTimeDateUtil;->yesterday:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    sget-object p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->yesterday:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v2, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needReinit()Z
    .locals 5

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 305
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x2

    .line 306
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v3, v1, :cond_2

    const/4 v1, 0x5

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public findTimeEntryByEntryId(I)Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->timeEntriese:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDay(Ljava/lang/String;)I
    .locals 4

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 456
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x15180

    div-long/2addr v2, v0

    long-to-int p1, v2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getLeftDay(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x1e

    return p1

    .line 449
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getDay(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initIfNeed()Z
    .locals 6

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 87
    iget-object v2, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/zui/gallery/data/LocalTimeDateUtil;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 90
    sget v5, Lcom/zui/gallery/data/LocalTimeDateUtil;->YEAR:I

    if-ne v0, v5, :cond_1

    sget v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->MONTH:I

    if-ne v2, v0, :cond_1

    sget v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->DAY:I

    if-ne v3, v0, :cond_1

    sget-object v0, Lcom/zui/gallery/data/LocalTimeDateUtil;->LOCAL:Ljava/util/Locale;

    if-eq v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "LocalTimeDateUtil"

    const-string v2, "needInit LocalTimeDateUtil "

    .line 91
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->init()V

    return v1
.end method
