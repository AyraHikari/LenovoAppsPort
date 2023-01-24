.class Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler$1;
.super Ljava/lang/Thread;
.source "GalleryUncaughtExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler$1;->this$0:Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler$1;->this$0:Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;->access$000(Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7a0b\u5e8f\u5f02\u5e38\u9000\u51fa\uff0c\u8bf7\u628a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0b\u7684\u7684log\u6587\u4ef6\u7ed9\u5f00\u53d1\u8005\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
