.class Lcom/google/vr/cardboard/FullscreenMode$1$1;
.super Ljava/lang/Object;
.source "FullscreenMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/FullscreenMode$1;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/vr/cardboard/FullscreenMode$1;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/FullscreenMode$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/google/vr/cardboard/FullscreenMode$1$1;->this$1:Lcom/google/vr/cardboard/FullscreenMode$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/vr/cardboard/FullscreenMode$1$1;->this$1:Lcom/google/vr/cardboard/FullscreenMode$1;

    iget-object v0, v0, Lcom/google/vr/cardboard/FullscreenMode$1;->this$0:Lcom/google/vr/cardboard/FullscreenMode;

    invoke-static {v0}, Lcom/google/vr/cardboard/FullscreenMode;->access$000(Lcom/google/vr/cardboard/FullscreenMode;)V

    return-void
.end method
