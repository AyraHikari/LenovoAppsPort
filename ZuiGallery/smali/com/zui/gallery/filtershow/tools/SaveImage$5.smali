.class Lcom/zui/gallery/filtershow/tools/SaveImage$5;
.super Ljava/lang/Object;
.source "SaveImage.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/tools/SaveImage;->getTrueFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$trueName:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$5;->val$trueName:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 3

    .line 868
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$5;->val$trueName:[Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    return-void
.end method
