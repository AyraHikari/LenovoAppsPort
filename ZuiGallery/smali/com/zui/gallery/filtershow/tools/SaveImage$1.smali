.class Lcom/zui/gallery/filtershow/tools/SaveImage$1;
.super Ljava/lang/Object;
.source "SaveImage.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/tools/SaveImage;->deleteAuxFiles(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fullPath:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$1;->val$fullPath:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$1;->val$fullPath:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    return-void
.end method
