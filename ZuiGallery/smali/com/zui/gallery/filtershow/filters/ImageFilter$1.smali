.class Lcom/zui/gallery/filtershow/filters/ImageFilter$1;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/filters/ImageFilter;->displayLowMemoryToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/filters/ImageFilter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/filters/ImageFilter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter$1;->this$0:Lcom/zui/gallery/filtershow/filters/ImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->access$000()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory too low for filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter$1;->this$0:Lcom/zui/gallery/filtershow/filters/ImageFilter;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", please file a bug report"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
