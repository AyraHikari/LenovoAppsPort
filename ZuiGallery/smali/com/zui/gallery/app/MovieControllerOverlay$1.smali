.class Lcom/zui/gallery/app/MovieControllerOverlay$1;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieControllerOverlay;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieControllerOverlay;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay$1;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay$1;->this$0:Lcom/zui/gallery/app/MovieControllerOverlay;

    invoke-static {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->access$000(Lcom/zui/gallery/app/MovieControllerOverlay;)V

    return-void
.end method
