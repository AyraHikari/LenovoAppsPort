.class Lcom/zui/gallery/app/BaseActivity$1;
.super Landroid/database/ContentObserver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/BaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/BaseActivity;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/app/BaseActivity$1;->this$0:Lcom/zui/gallery/app/BaseActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/app/BaseActivity$1;->this$0:Lcom/zui/gallery/app/BaseActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/BrightnessTools;->getScreenBrightness(Landroid/content/ContentResolver;)I

    move-result p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenBrightnessObserver.change :  curBrightness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/app/BaseActivity$1;->this$0:Lcom/zui/gallery/app/BaseActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/util/BrightnessTools;->setBrightness(Landroid/app/Activity;I)V

    return-void
.end method
