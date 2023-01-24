.class public final Lcom/zui/gallery/database/GalleryContract$CsBestSelect;
.super Ljava/lang/Object;
.source "GalleryContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/zui/gallery/database/GalleryContract$CsBestSelectColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsBestSelect"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/csbestselect"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/csbestselect"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 386
    sget-object v0, Lcom/zui/gallery/database/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "csbestselect"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/database/GalleryContract$CsBestSelect;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
