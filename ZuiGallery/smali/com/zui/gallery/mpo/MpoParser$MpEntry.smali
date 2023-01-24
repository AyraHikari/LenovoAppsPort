.class Lcom/zui/gallery/mpo/MpoParser$MpEntry;
.super Ljava/lang/Object;
.source "MpoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/mpo/MpoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MpEntry"
.end annotation


# instance fields
.field mDepImg1Entry:S

.field mDepImg2Entry:S

.field mImgAttribute:I

.field mImgDataOffset:I

.field mImgSize:I

.field final synthetic this$0:Lcom/zui/gallery/mpo/MpoParser;


# direct methods
.method constructor <init>(Lcom/zui/gallery/mpo/MpoParser;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/zui/gallery/mpo/MpoParser$MpEntry;->this$0:Lcom/zui/gallery/mpo/MpoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
