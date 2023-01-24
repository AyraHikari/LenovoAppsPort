.class Lcom/zui/gallery/mpo/MpoParser$MpoTag;
.super Ljava/lang/Object;
.source "MpoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/mpo/MpoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MpoTag"
.end annotation


# instance fields
.field mCount:I

.field mData:I

.field mId:S

.field mType:S

.field final synthetic this$0:Lcom/zui/gallery/mpo/MpoParser;


# direct methods
.method constructor <init>(Lcom/zui/gallery/mpo/MpoParser;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/zui/gallery/mpo/MpoParser$MpoTag;->this$0:Lcom/zui/gallery/mpo/MpoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
