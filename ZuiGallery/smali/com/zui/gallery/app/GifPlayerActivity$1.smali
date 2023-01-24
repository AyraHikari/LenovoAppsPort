.class Lcom/zui/gallery/app/GifPlayerActivity$1;
.super Ljava/lang/Object;
.source "GifPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/GifPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GifPlayerActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GifPlayerActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity$1;->this$0:Lcom/zui/gallery/app/GifPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x3

    const-string v1, "GifView"

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const-string p1, "Unknown audio focus change code"

    .line 157
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "AudioFocus: received AUDIOFOCUS_LOSS"

    .line 147
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity$1;->this$0:Lcom/zui/gallery/app/GifPlayerActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/GifPlayerActivity;->access$000(Lcom/zui/gallery/app/GifPlayerActivity;)V

    goto :goto_0

    :cond_1
    const-string p1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    .line 152
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
