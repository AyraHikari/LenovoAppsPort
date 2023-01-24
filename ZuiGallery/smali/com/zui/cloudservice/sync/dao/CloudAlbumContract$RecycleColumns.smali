.class public interface abstract Lcom/zui/cloudservice/sync/dao/CloudAlbumContract$RecycleColumns;
.super Ljava/lang/Object;
.source "CloudAlbumContract.java"

# interfaces
.implements Lcom/zui/cloudservice/sync/dao/CloudAlbumContract$BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cloudservice/sync/dao/CloudAlbumContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecycleColumns"
.end annotation


# static fields
.field public static final CHECKSUM:Ljava/lang/String; = "origin"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DELETE_TIME:Ljava/lang/String; = "deleted_time"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final REMAIN_DAYS:Ljava/lang/String; = "remain_days"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final TITLE:Ljava/lang/String; = "name"
