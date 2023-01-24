.class Lcom/zui/gallery/app/CommonControllerOverlay$1;
.super Ljava/lang/Object;
.source "CommonControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/CommonControllerOverlay;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/CommonControllerOverlay;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay$1;->this$0:Lcom/zui/gallery/app/CommonControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay$1;->this$0:Lcom/zui/gallery/app/CommonControllerOverlay;

    iget-object p1, p1, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay$1;->this$0:Lcom/zui/gallery/app/CommonControllerOverlay;

    iget-object p1, p1, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PAUSED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay$1;->this$0:Lcom/zui/gallery/app/CommonControllerOverlay;

    iget-object p1, p1, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz p1, :cond_1

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay$1;->this$0:Lcom/zui/gallery/app/CommonControllerOverlay;

    iget-object p1, p1, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onPlayPause()V

    :cond_1
    return-void
.end method
