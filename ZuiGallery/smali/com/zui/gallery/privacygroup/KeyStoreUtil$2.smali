.class Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;
.super Ljava/lang/Object;
.source "KeyStoreUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/privacygroup/KeyStoreUtil;->sharPrivacyFile(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$filePathList:[Ljava/lang/String;

.field final synthetic val$isVideo:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/privacygroup/KeyStoreUtil;[Ljava/lang/String;Landroid/app/Activity;Z)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->this$0:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    iput-object p2, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->val$filePathList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->val$activity:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->val$isVideo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filePathList[0] is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->val$filePathList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wangcanvvvvvv"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object p1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->this$0:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;->val$isVideo:Z

    invoke-static {p1, v0, p2, v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->access$000(Lcom/zui/gallery/privacygroup/KeyStoreUtil;Landroid/app/Activity;Landroid/net/Uri;Z)V

    return-void
.end method
