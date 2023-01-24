.class public Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;
.super Ljava/lang/Object;
.source "LocalTimeDateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocalTimeDateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeEntry"
.end annotation


# instance fields
.field public endMillion:J

.field public latlong:Ljava/lang/String;

.field public locationInfo:Ljava/lang/String;

.field public startMillion:J

.field public timeCount:I

.field public timeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;I)V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-wide p1, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    .line 476
    iput-wide p3, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    .line 477
    iput-object p5, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 478
    iput p6, p0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    return-void
.end method
