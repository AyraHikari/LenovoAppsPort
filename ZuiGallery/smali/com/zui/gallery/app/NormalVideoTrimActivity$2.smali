.class Lcom/zui/gallery/app/NormalVideoTrimActivity$2;
.super Ljava/lang/Object;
.source "NormalVideoTrimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/NormalVideoTrimActivity;->onSeekMove(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$2;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$2;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->playHidenBestFrameAnim()V

    return-void
.end method
