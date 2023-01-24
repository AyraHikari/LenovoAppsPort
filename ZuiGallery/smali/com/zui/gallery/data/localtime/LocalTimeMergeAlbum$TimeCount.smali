.class public Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;
.super Ljava/lang/Object;
.source "LocalTimeMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeCount"
.end annotation


# instance fields
.field public count:I

.field public displayname:Ljava/lang/String;

.field public latlong:Ljava/lang/String;

.field public latlonginfo:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    .line 168
    iput p3, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->count:I

    return-void
.end method
